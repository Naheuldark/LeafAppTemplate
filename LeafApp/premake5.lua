---
--- Leaf App
---

project "LeafApp"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")	
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"src/**.h",
		"src/**.cpp"
	}

	includedirs {
		"%{wks.location}/Leaf/Leaf/src",
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.ImGui}",
		"%{IncludeDir.glm}",
		"%{IncludeDir.VulkanSDK}",
		"%{IncludeDir.stb_image}",
	}

	links {
		"Leaf"
	}

	filter "system:windows"
		systemversion "latest"
		defines "LF_PLATFORM_WINDOWS"

	filter "configurations:Debug"
		defines "LF_DEBUG"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines "LF_RELEASE"
		runtime "Release"
		optimize "On"
		symbols "On"

	filter "configurations:Dist"
		defines "LF_DIST"
		runtime "Release"
		optimize "On"
		symbols "Off"
